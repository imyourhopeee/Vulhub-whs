import socket
import sys

def send_payload(ip, port):
    s = socket.socket()
    s.connect((ip, int(port)))
    payload = b"\x47\x49\x4f\x50"  # 그냥 테스트용 바이트
    s.send(payload)
    print("[+] Payload sent to {}:{}".format(ip, port))
    s.close()

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python poc.py <target_ip> <port>")
        sys.exit(1)
    send_payload(sys.argv[1], sys.argv[2])
